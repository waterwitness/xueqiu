.class public final Lcom/xueqiu/android/trade/h;
.super Landroid/content/BroadcastReceiver;
.source "UpdateBrokersBroadcastReceiver.java"

# interfaces
.implements Lcom/xueqiu/android/base/b/q;


# instance fields
.field private a:Lcom/xueqiu/android/base/b/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/h;->a:Lcom/xueqiu/android/base/b/x;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string v1, "com.xueqiu.android.action.updateBrokerList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/trade/h;->a:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/trade/h;->a:Lcom/xueqiu/android/base/b/x;

    .line 3538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 44
    if-eqz v0, :cond_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/h$1;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/trade/h$1;-><init>(Lcom/xueqiu/android/trade/h;Lcom/xueqiu/android/base/b/q;)V

    .line 3671
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/am;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/trade/h;->a:Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final z_()Z
    .locals 1

    .prologue
    .line 130
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
