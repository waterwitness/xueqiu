.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V

    .line 212
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$12;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 213
    return-void
.end method
