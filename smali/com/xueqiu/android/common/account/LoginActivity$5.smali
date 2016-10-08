.class final Lcom/xueqiu/android/common/account/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 396
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->j(Lcom/xueqiu/android/common/account/LoginActivity;)I

    .line 397
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->k(Lcom/xueqiu/android/common/account/LoginActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->a:Landroid/widget/TextView;

    const v1, 0x7f070357

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v4}, Lcom/xueqiu/android/common/account/LoginActivity;->k(Lcom/xueqiu/android/common/account/LoginActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->l(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->a:Landroid/widget/TextView;

    const v1, 0x7f070182

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->m(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->b:Ljava/lang/String;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$5;->d:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bed\u97f3\u9a8c\u8bc1"

    .line 408
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 409
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$5$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/LoginActivity$5$2;-><init>(Lcom/xueqiu/android/common/account/LoginActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 416
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$5$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/LoginActivity$5$1;-><init>(Lcom/xueqiu/android/common/account/LoginActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702e8

    .line 426
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
