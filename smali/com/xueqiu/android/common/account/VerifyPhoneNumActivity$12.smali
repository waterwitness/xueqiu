.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 190
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "\u8bf7\u5148\u586b\u5199\u624b\u673a\u53f7"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v4, 0x7f070409

    .line 204
    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v4, 0x7f070070

    .line 205
    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v4, 0x7f0700b1

    .line 206
    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;-><init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v5, 0x7f07044e

    .line 217
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
