.class final Lcom/xueqiu/android/common/setting/SettingActivity$25;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$25;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$25;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0701ed

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void
.end method
