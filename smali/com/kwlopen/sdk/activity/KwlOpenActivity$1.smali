.class Lcom/kwlopen/sdk/activity/KwlOpenActivity$1;
.super Lorg/apache/cordova/l;
.source "KwlOpenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/KwlOpenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/KwlOpenActivity;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$1;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/l;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/l;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 127
    const-string v0, "onPageFinished"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/l;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    const-string v0, "onPageStarted"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    const-string v0, "shouldOverrideUrlLoading"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    return v0
.end method
