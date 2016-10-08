.class final Lcom/xueqiu/android/trade/c/m$2;
.super Landroid/webkit/WebViewClient;
.source "TakingPositionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->z()V

    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->y()Landroid/app/Dialog;

    .line 172
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 176
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v1

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return v0

    .line 180
    :cond_0
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "js:searchStock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->b(Lcom/xueqiu/android/trade/c/m;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ak;->b(Landroid/view/MenuItem;)Z

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 183
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/m;->b(Lcom/xueqiu/android/trade/c/m;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e013c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 184
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move v0, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_1
    const-string v0, "js:tranAdded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f040007

    const v3, 0x7f040013

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/a/k;->overridePendingTransition(II)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.performanceTransAdded"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    :goto_1
    move v0, v2

    .line 210
    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "https://xueqiu.com/S/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://xueqiu.com/S/"

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v2

    .line 194
    goto/16 :goto_0

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->c(Lcom/xueqiu/android/trade/c/m;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->c(Lcom/xueqiu/android/trade/c/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_2
    move v0, v2

    .line 201
    goto/16 :goto_0

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->onBackPressed()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 203
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$2;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-static {v0, p2}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/xueqiu/android/trade/c/m;->u()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 205
    goto/16 :goto_0
.end method
