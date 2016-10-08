.class final Lcom/xueqiu/android/community/AccountBindingActivity$7;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->c(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const-class v2, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const-string v1, "extra_verify_phone_intent"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/community/AccountBindingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$7;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$7$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$7$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$7;)V

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
