.class final Lcom/xueqiu/android/common/m$1;
.super Landroid/content/BroadcastReceiver;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/m;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xueqiu/android/common/m$1;->a:Lcom/xueqiu/android/common/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/xueqiu/android/common/m$1;->a:Lcom/xueqiu/android/common/m;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/m;->a(Lcom/xueqiu/android/common/m;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/m$1;->a:Lcom/xueqiu/android/common/m;

    invoke-static {v0}, Lcom/xueqiu/android/common/m;->a(Lcom/xueqiu/android/common/m;)V

    .line 204
    return-void
.end method
