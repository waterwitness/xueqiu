.class public Lcom/xueqiu/android/trade/ConfirmPatternActivity;
.super Lcom/xueqiu/android/common/b;
.source "ConfirmPatternActivity.java"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->j:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->logout()V

    return-void
.end method

.method private logout()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700b1

    .line 74
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity$2;-><init>(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07025a

    .line 87
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 88
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->setResult(I)V

    .line 97
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_request_code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 35
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 36
    const v0, 0x7f07045e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->setTitle(I)V

    .line 40
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->j:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->j:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 43
    invoke-static {p0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    invoke-static {}, Lcom/xueqiu/android/trade/patternlock/b;->v()Lcom/xueqiu/android/trade/patternlock/b;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 1054
    iget-object v2, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 1056
    new-instance v1, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity$1;-><init>(Lcom/xueqiu/android/trade/ConfirmPatternActivity;)V

    .line 1140
    iput-object v1, v0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->setContentView(Landroid/view/View;)V

    .line 49
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/ConfirmPatternActivity;->finish()V

    goto :goto_0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
