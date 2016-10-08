.class final Lcom/xueqiu/android/message/client/MessageService$22;
.super Landroid/content/BroadcastReceiver;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$22;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.requestPrimary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Lcom/snowballfinance/messageplatform/a/r;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/r;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService$22;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.reconnect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$22;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->f(Lcom/xueqiu/android/message/client/MessageService;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$22$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$22$1;-><init>(Lcom/xueqiu/android/message/client/MessageService$22;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto :goto_0
.end method
