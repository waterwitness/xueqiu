.class public final Lcom/xueqiu/android/common/widget/ac;
.super Landroid/support/v4/a/h;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/a/h;-><init>()V

    return-void
.end method

.method public static u()Lcom/xueqiu/android/common/widget/ac;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/xueqiu/android/common/widget/ac;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/ac;-><init>()V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string v2, "title"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const-string v2, "message"

    const v3, 0x7f07020e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ac;->e(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 29
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 30
    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 31
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ac;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 32
    if-lez v0, :cond_0

    .line 33
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 35
    :cond_0
    if-lez v1, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/ac;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 39
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    return-object v2
.end method
