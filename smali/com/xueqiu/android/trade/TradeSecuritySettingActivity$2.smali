.class final Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;
.super Ljava/lang/Object;
.source "TradeSecuritySettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    iget-object v1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$2;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->b(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    return-void
.end method
