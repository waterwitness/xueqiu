.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$11;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
