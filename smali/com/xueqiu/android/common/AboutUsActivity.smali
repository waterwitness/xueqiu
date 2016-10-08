.class public Lcom/xueqiu/android/common/AboutUsActivity;
.super Lcom/xueqiu/android/common/b;
.source "AboutUsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AboutUsActivity;->setContentView(Landroid/view/View;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v1, Lcom/xueqiu/android/common/a;

    invoke-direct {v1}, Lcom/xueqiu/android/common/a;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AboutUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/a;->e(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AboutUsActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 38
    :cond_0
    return-void
.end method
