.class final Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$4;
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
    .line 87
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$4;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$4;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/patternlock/d;->a(Landroid/app/Activity;I)V

    .line 91
    return-void
.end method
