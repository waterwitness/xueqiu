.class final Lcom/xueqiu/android/common/MainActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MainActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$8;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 134
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent.getAction = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$8;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/MainActivity;->b(Lcom/xueqiu/android/common/MainActivity;)V

    .line 136
    return-void
.end method
