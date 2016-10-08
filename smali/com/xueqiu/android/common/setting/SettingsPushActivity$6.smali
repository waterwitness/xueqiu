.class final Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;
.super Ljava/lang/Object;
.source "SettingsPushActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingsPushActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    const v1, 0x7f0701e2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$6;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v1, v1, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method
