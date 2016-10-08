.class final Lcom/xueqiu/android/community/AccountBindingActivity$9;
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
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->f(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040d

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 190
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$9$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$9$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$9;)V

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 216
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->f(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070248

    .line 203
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07057f

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$9$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$9$2;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$9;)V

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$9;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->g(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    goto :goto_0
.end method
