.class final Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;
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
    .line 140
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$9;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/common/setting/SettingsPushActivity;->a(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
