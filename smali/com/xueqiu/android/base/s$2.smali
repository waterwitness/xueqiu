.class final Lcom/xueqiu/android/base/s$2;
.super Landroid/content/BroadcastReceiver;
.source "SNBUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/s;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/s;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/xueqiu/android/base/s$2;->a:Lcom/xueqiu/android/base/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/base/s$2;->a:Lcom/xueqiu/android/base/s;

    invoke-static {v0, p1}, Lcom/xueqiu/android/base/s;->a(Lcom/xueqiu/android/base/s;Landroid/content/Context;)V

    .line 200
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/base/s$2;->a:Lcom/xueqiu/android/base/s;

    invoke-static {v0}, Lcom/xueqiu/android/base/s;->b(Lcom/xueqiu/android/base/s;)Landroid/content/BroadcastReceiver;

    .line 203
    :cond_0
    return-void
.end method
