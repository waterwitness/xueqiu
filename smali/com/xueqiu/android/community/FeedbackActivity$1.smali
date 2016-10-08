.class final Lcom/xueqiu/android/community/FeedbackActivity$1;
.super Landroid/webkit/WebViewClient;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/FeedbackActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/community/FeedbackActivity$1;->a:Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity$1;->a:Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/FeedbackActivity;->i()V

    .line 80
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity$1;->a:Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/xueqiu/android/community/FeedbackActivity$1;->a:Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/FeedbackActivity;->a(Lcom/xueqiu/android/community/FeedbackActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "javascript:window.deviceInfo=\'%s\'));"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity$1;->a:Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/FeedbackActivity;->h()Landroid/app/Dialog;

    .line 90
    return-void
.end method
