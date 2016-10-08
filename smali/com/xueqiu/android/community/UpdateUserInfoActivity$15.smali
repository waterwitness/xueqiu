.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 915
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0, v7}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Z)V

    .line 916
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->n(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 918
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07017d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/p;

    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v6, 0x7f07017b

    .line 920
    invoke-virtual {v5, v6}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v7, 0x7f07017a

    .line 921
    invoke-virtual {v6, v7}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v7, 0x7f07017c

    .line 922
    invoke-virtual {v6, v7}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {v2, v3, v4, v5}, Lcom/xueqiu/android/community/p;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;[Ljava/lang/String;Landroid/content/Context;)V

    .line 919
    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    .line 923
    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 924
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k:Landroid/app/AlertDialog;

    .line 925
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k:Landroid/app/AlertDialog;

    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 932
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 933
    return-void
.end method
