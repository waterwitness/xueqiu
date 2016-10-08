.class public Lcom/xueqiu/android/base/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 26
    sget-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    if-nez v0, :cond_0

    .line 27
    const-string v0, "AlarmReceiver"

    const-string v1, "start message service."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "AlarmReceiver"

    const-string v1, "message service is running."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
