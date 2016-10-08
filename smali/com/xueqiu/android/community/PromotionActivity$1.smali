.class final Lcom/xueqiu/android/community/PromotionActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PromotionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/PromotionActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/PromotionActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/PromotionActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/community/PromotionActivity$1;->a:Lcom/xueqiu/android/community/PromotionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/community/PromotionActivity$1;->a:Lcom/xueqiu/android/community/PromotionActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/PromotionActivity;->i()V

    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/PromotionActivity$1;->a:Lcom/xueqiu/android/community/PromotionActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/PromotionActivity;->h()Landroid/app/Dialog;

    .line 95
    return-void
.end method
