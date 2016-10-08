.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const-class v2, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->finish()V

    .line 139
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$1;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method
