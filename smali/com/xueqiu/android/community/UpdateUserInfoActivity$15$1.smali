.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;
.super Ljava/lang/Object;
.source "UpdateUserInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;

    iget-object v0, v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f0e0303

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15$1;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;

    iget-object v1, v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    return-void
.end method
