.class final Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;
.super Ljava/lang/Object;
.source "TradeSecuritySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 60
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/patternlock/d;->a(Landroid/app/Activity;I)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    const v1, 0x7f07053c

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    .line 1066
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/trade/ConfirmPatternActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1067
    const-string v2, "extra_request_code"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    const v1, 0x7f07053b

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
