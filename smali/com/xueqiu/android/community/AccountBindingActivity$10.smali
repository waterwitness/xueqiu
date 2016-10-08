.class final Lcom/xueqiu/android/community/AccountBindingActivity$10;
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
    .line 218
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$10;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$10;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->h(Lcom/xueqiu/android/community/AccountBindingActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$10;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f070411

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/AccountBindingActivity$10;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 230
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$10;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
