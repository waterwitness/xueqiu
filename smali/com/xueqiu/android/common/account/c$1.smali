.class final Lcom/xueqiu/android/common/account/c$1;
.super Landroid/content/BroadcastReceiver;
.source "ThirdAuthHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/common/account/c$1;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    const-string v1, "extra_wechat_result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/xueqiu/android/common/account/c$1$1;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/common/account/c$1$1;-><init>(Lcom/xueqiu/android/common/account/c$1;Lcom/xueqiu/android/base/b/ai;)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 117
    return-void
.end method
