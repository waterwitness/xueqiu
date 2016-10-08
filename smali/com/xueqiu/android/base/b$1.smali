.class final Lcom/xueqiu/android/base/b$1;
.super Landroid/content/BroadcastReceiver;
.source "AppEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/b;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 1119
    iget-boolean v0, v0, Lcom/xueqiu/android/base/f;->b:Z

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/c/b;->refresh(Lcom/xueqiu/android/base/q;)V

    .line 323
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/xueqiu/android/base/q;)V

    .line 325
    :cond_0
    return-void
.end method
