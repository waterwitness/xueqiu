.class final Lcom/xueqiu/android/common/WebViewActivity$1$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/WebViewActivity$1;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/common/WebViewActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->c:Lcom/xueqiu/android/common/WebViewActivity$1;

    iput-object p2, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->c:Lcom/xueqiu/android/common/WebViewActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 190
    const-string v0, "www.xueqiu.com"

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 193
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 197
    :cond_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->c:Lcom/xueqiu/android/common/WebViewActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6587\u4ef6\u4fdd\u5b58\u81f3"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->b(Ljava/lang/String;)V

    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$1$2;->c:Lcom/xueqiu/android/common/WebViewActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
