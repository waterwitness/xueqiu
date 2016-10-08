.class final Lcom/xueqiu/android/community/RewardActivity$1;
.super Landroid/webkit/WebViewClient;
.source "RewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RewardActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RewardActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RewardActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RewardActivity;->i()V

    .line 102
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RewardActivity;->h()Landroid/app/Dialog;

    .line 109
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 113
    const-string v0, "js://walletDonateSucceed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RewardActivity;->a(Lcom/xueqiu/android/community/RewardActivity;)Z

    .line 121
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    const-string v0, "js://walletDeposit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    const-class v2, Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    iget-object v1, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    const/16 v2, 0x63

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/community/RewardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardActivity$1;->a:Lcom/xueqiu/android/community/RewardActivity;

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/community/RewardActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
