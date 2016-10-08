.class final Lcom/xueqiu/android/base/h5/c$4;
.super Landroid/webkit/WebChromeClient;
.source "H5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 1171
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->f(Lcom/xueqiu/android/base/h5/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1177
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->f(Lcom/xueqiu/android/base/h5/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1178
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1179
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->f(Lcom/xueqiu/android/base/h5/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1164
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0, p2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Ljava/lang/CharSequence;)V

    .line 1167
    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1183
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->g(Lcom/xueqiu/android/base/h5/c;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->g(Lcom/xueqiu/android/base/h5/c;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0, p2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 1188
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v2}, Lcom/xueqiu/android/base/h5/c;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/k;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/h5/c;->u()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1194
    :try_start_1
    const-string v2, "PhotoPath"

    iget-object v4, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v4}, Lcom/xueqiu/android/base/h5/c;->h(Lcom/xueqiu/android/base/h5/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1201
    :goto_0
    if-eqz v3, :cond_2

    .line 1202
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    const-string v1, "output"

    .line 1204
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1210
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string v1, "image/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1215
    if-eqz v0, :cond_3

    .line 1216
    new-array v1, v7, [Landroid/content/Intent;

    aput-object v0, v1, v6

    move-object v0, v1

    .line 1221
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHOOSER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1223
    const-string v2, "android.intent.extra.TITLE"

    const-string v3, "Image Chooser"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1226
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$4;->a:Lcom/xueqiu/android/base/h5/c;

    const/16 v2, 0x2714

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Landroid/content/Intent;I)V

    .line 1228
    return v7

    .line 1195
    :catch_0
    move-exception v2

    move-object v3, v1

    .line 1197
    :goto_3
    const-string v4, "H5Fragment"

    const-string v5, "Unable to create Image File"

    invoke-static {v4, v5, v2}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1206
    goto :goto_1

    .line 1218
    :cond_3
    new-array v0, v6, [Landroid/content/Intent;

    goto :goto_2

    .line 1195
    :catch_1
    move-exception v2

    goto :goto_3
.end method
