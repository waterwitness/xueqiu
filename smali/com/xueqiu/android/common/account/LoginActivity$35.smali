.class final Lcom/xueqiu/android/common/account/LoginActivity$35;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$35;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$35;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/CountryCodeSelectActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$35;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const/16 v2, 0x62

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/account/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    return-void
.end method
