.class public Lcom/xueqiu/android/base/h5/H5Activity;
.super Lcom/xueqiu/android/common/b;
.source "H5Activity.java"


# instance fields
.field public j:Ljava/lang/String;

.field k:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5Activity;->j:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/H5Activity;->k:Z

    return-void
.end method

.method private j()Lcom/xueqiu/android/base/h5/c;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/c;

    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_from_ad"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->j()Lcom/xueqiu/android/base/h5/c;

    move-result-object v1

    .line 2153
    iget-object v2, v1, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/SNBWebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2154
    iget-object v1, v1, Lcom/xueqiu/android/base/h5/c;->e:Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBWebView;->goBack()V

    move v1, v0

    .line 80
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    :goto_1
    return v0

    .line 2157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->j()Lcom/xueqiu/android/base/h5/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5Activity;->startActivity(Landroid/content/Intent;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 120
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->j()Lcom/xueqiu/android/base/h5/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->y_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0018

    .line 38
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/h5/H5Activity;->setContentView(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/H5Activity;->j:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_is_module"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/h5/H5Activity;->p:Z

    .line 45
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/H5Activity;->j:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xueqiu/android/base/h5/H5Activity;->p:Z

    invoke-static {v2, v0, v3}, Lcom/xueqiu/android/base/h5/c;->a(Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Z)Lcom/xueqiu/android/base/h5/c;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    .line 54
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 56
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onRestart()V

    .line 108
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/base/h5/H5Activity;->k:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/xueqiu/android/base/h5/H5Activity;->finish()V

    .line 111
    :cond_0
    return-void
.end method
