.class public Lcom/xueqiu/android/trade/SetPatternActivity;
.super Lcom/xueqiu/android/common/b;
.source "SetPatternActivity.java"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/SetPatternActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/SetPatternActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->logout()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/xueqiu/android/trade/patternlock/k;->v()Lcom/xueqiu/android/trade/patternlock/k;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 1275
    iget-boolean v2, p0, Lcom/xueqiu/android/common/b;->n:Z

    .line 59
    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 62
    :cond_0
    return-void
.end method

.method private logout()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700b1

    .line 87
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/SetPatternActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/SetPatternActivity$2;-><init>(Lcom/xueqiu/android/trade/SetPatternActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07025a

    .line 100
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 101
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 106
    invoke-static {p0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f07001c

    .line 111
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700b1

    .line 112
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/SetPatternActivity$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/trade/SetPatternActivity$3;-><init>(Lcom/xueqiu/android/trade/SetPatternActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    .line 118
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 122
    return-void

    .line 109
    :cond_0
    const v0, 0x7f07001b

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_request_code"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 36
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 37
    const v0, 0x7f070468

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->setTitle(I)V

    .line 43
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 46
    if-nez p1, :cond_1

    .line 47
    invoke-static {p0}, Lcom/xueqiu/android/trade/patternlock/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    invoke-static {}, Lcom/xueqiu/android/trade/patternlock/b;->v()Lcom/xueqiu/android/trade/patternlock/b;

    move-result-object v0

    .line 1066
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 1067
    iget-object v2, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/ac;->d()I

    .line 1069
    new-instance v2, Lcom/xueqiu/android/trade/SetPatternActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/xueqiu/android/trade/SetPatternActivity$1;-><init>(Lcom/xueqiu/android/trade/SetPatternActivity;Landroid/support/v4/a/ac;Lcom/xueqiu/android/trade/patternlock/b;)V

    .line 1140
    iput-object v2, v0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    .line 53
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/SetPatternActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->setContentView(Landroid/view/View;)V

    .line 54
    return-void

    .line 39
    :cond_2
    const v0, 0x7f070466

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/SetPatternActivity;->setTitle(I)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/xueqiu/android/trade/SetPatternActivity;->j()V

    goto :goto_1
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
