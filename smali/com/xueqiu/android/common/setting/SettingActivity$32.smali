.class final Lcom/xueqiu/android/common/setting/SettingActivity$32;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$32;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$32;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/setting/SettingActivity;->feedback(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$32;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->a(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "feedback"

    .line 1088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    return-void
.end method
