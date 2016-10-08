.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->l(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)I

    .line 432
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->m(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v2, 0x7f070357

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v5}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->m(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->n(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v2, 0x7f070182

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bed\u97f3\u9a8c\u8bc1"

    .line 444
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 445
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 446
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4$1;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702e8

    .line 454
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
