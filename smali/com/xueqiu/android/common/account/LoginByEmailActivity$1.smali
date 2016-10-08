.class final Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;
.super Ljava/lang/Object;
.source "LoginByEmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginByEmailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginByEmailActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    const-class v2, Lcom/xueqiu/android/common/account/GetbackPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginByEmailActivity$1;->a:Lcom/xueqiu/android/common/account/LoginByEmailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/account/LoginByEmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
