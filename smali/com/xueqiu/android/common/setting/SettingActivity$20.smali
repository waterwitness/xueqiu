.class final Lcom/xueqiu/android/common/setting/SettingActivity$20;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->logout(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$20;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->logout()V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$20;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    .line 2366
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 2367
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2368
    const-string v2, "extra message"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/b;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const-string v0, "unSetMiUserAccount"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$20;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->i(Lcom/xueqiu/android/common/setting/SettingActivity;)Lcom/xueqiu/android/common/account/a;

    move-result-object v0

    .line 3179
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/account/a;->h:Z

    .line 636
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$20;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->i(Lcom/xueqiu/android/common/setting/SettingActivity;)Lcom/xueqiu/android/common/account/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/a;->a()V

    .line 637
    return-void
.end method
