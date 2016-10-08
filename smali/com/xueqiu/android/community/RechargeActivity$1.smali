.class final Lcom/xueqiu/android/community/RechargeActivity$1;
.super Landroid/webkit/WebViewClient;
.source "RechargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RechargeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RechargeActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/community/RechargeActivity$1;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity$1;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RechargeActivity;->i()V

    .line 81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity$1;->a:Lcom/xueqiu/android/community/RechargeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RechargeActivity;->h()Landroid/app/Dialog;

    .line 88
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
