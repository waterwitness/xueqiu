.class final Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "SettingsPushActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/SettingsPushActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iput-object p3, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->z:Lcom/xueqiu/android/common/widget/ac;

    .line 1167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/h;->a(Z)V

    .line 294
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 295
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 290
    .line 1299
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->z:Lcom/xueqiu/android/common/widget/ac;

    .line 2167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/a/h;->a(Z)V

    .line 1300
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    const v2, 0x7f0701eb

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1302
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->c:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$5;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
