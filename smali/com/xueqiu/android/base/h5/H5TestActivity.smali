.class public Lcom/xueqiu/android/base/h5/H5TestActivity;
.super Lcom/xueqiu/android/common/b;
.source "H5TestActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/Button;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/base/h5/H5TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public find(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 1134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 40
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->p:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/xueqiu/android/base/h5/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->p:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5TestActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0e0188

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->j:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f0e018a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->k:Landroid/widget/Button;

    .line 34
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->p:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0e018c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->q:Landroid/webkit/WebView;

    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/H5TestActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    return-void
.end method

.method public refresh(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 2134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 49
    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/k;->refresh()V

    .line 50
    return-void
.end method
