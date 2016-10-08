.class final Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;
.super Ljava/lang/Object;
.source "VerifyBindedPhoneNumActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method
