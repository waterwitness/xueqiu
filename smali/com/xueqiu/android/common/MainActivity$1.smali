.class final Lcom/xueqiu/android/common/MainActivity$1;
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
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.UPDATE_UNREAD_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    const-string v0, "extra_remind"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Remind;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;Lcom/xueqiu/android/community/model/Remind;)Lcom/xueqiu/android/community/model/Remind;

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "key_remind"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/community/model/Remind;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/MainActivity$1;->a:Lcom/xueqiu/android/common/MainActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/common/MainActivity;)Lcom/xueqiu/android/community/model/Remind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/MainActivity;->a(Lcom/xueqiu/android/community/model/Remind;)V

    .line 128
    :cond_1
    return-void
.end method
