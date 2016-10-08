.class public final Lcom/xueqiu/android/common/u;
.super Landroid/webkit/WebChromeClient;
.source "SNBWebChromeClient.java"


# instance fields
.field public a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/u;->a:Landroid/app/Activity;

    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/common/u;->a:Landroid/app/Activity;

    .line 22
    return-void
.end method

.method private a(ZLjava/lang/String;Landroid/webkit/JsResult;)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/common/u;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070409

    .line 44
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/xueqiu/android/common/u$1;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/common/u$1;-><init>(Lcom/xueqiu/android/common/u;Landroid/webkit/JsResult;)V

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/xueqiu/android/common/u$2;

    invoke-direct {v2, p0, p3}, Lcom/xueqiu/android/common/u$2;-><init>(Lcom/xueqiu/android/common/u;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 62
    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p4}, Lcom/xueqiu/android/common/u;->a(ZLjava/lang/String;Landroid/webkit/JsResult;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, v0, p3, p4}, Lcom/xueqiu/android/common/u;->a(ZLjava/lang/String;Landroid/webkit/JsResult;)V

    .line 33
    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p5}, Lcom/xueqiu/android/common/u;->a(ZLjava/lang/String;Landroid/webkit/JsResult;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
