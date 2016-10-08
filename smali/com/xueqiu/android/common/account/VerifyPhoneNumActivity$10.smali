.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->onBackPressed()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 726
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 728
    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 729
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 730
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$10;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->finish()V

    .line 731
    return-void
.end method
