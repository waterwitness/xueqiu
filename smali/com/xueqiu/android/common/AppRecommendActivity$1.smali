.class final Lcom/xueqiu/android/common/AppRecommendActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "AppRecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/AppRecommendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/AppRecommendActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/AppRecommendActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/xueqiu/android/common/AppRecommendActivity$1;->a:Lcom/xueqiu/android/common/AppRecommendActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 37
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/common/AppRecommendActivity$1;->a:Lcom/xueqiu/android/common/AppRecommendActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/AppRecommendActivity;->i()V

    .line 40
    :cond_0
    return-void
.end method
