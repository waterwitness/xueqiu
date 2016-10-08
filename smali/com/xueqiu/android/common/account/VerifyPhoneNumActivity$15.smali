.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    .line 255
    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 255
    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 2329
    iput-boolean v3, v0, Lcom/android/volley/n;->h:Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->f(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 267
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 269
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$15;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
