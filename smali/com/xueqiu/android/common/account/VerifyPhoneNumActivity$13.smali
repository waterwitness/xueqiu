.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const-class v2, Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$13;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method
