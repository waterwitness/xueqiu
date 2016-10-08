.class final Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;
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
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->c(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->c(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    new-instance v1, Lcom/xueqiu/android/trade/e;

    iget-object v2, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/trade/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;Lcom/xueqiu/android/trade/e;)Lcom/xueqiu/android/trade/e;

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->c(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5$1;-><init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;)V

    .line 1122
    iput-object v1, v0, Lcom/xueqiu/android/trade/e;->c:Lcom/xueqiu/android/trade/f;

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->c(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;)Lcom/xueqiu/android/trade/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/e;->a()V

    .line 110
    :cond_1
    return-void
.end method
