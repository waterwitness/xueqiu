.class final Lcom/xueqiu/android/common/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WebViewActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/WebViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 1197
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_2

    const-string v0, ".pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    const-string v1, "pdf_file_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xueqiu-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$1;->a:Lcom/xueqiu/android/common/WebViewActivity;

    const v3, 0x7f07012a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/xueqiu/android/common/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/common/WebViewActivity$1$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/xueqiu/android/common/WebViewActivity$1$2;-><init>(Lcom/xueqiu/android/common/WebViewActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/common/WebViewActivity$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/WebViewActivity$1$1;-><init>(Lcom/xueqiu/android/common/WebViewActivity$1;)V

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
