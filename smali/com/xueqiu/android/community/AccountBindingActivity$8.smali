.class final Lcom/xueqiu/android/community/AccountBindingActivity$8;
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
    .line 148
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->d(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 154
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$8$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$8$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$8;)V

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->d(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070248

    .line 167
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07057f

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$8$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$8$2;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity$8;)V

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->e(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$8;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->b(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ap;->a()V

    goto :goto_0
.end method
