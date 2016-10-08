.class final Lcom/xueqiu/android/trade/kwlopen/a$2;
.super Lorg/apache/cordova/e;
.source "KwlOpenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/kwlopen/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/kwlopen/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/kwlopen/a;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/trade/kwlopen/a$2;->a:Lcom/xueqiu/android/trade/kwlopen/a;

    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/e;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 142
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/e;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 143
    invoke-static {}, Lcom/xueqiu/android/trade/kwlopen/a;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    const-string v0, "onProgressChanged"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 146
    invoke-static {}, Lcom/xueqiu/android/trade/kwlopen/a;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/trade/kwlopen/a;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 149
    invoke-static {}, Lcom/xueqiu/android/trade/kwlopen/a;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
