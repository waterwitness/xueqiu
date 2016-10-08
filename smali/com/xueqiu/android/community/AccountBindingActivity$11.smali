.class final Lcom/xueqiu/android/community/AccountBindingActivity$11;
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
    .line 234
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040e

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 240
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$11$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$11$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$11;)V

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 267
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070248

    .line 253
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07057f

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$11$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$11$2;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$11;)V

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$11;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->j(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    goto :goto_0
.end method
