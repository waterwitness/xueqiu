.class final Lcom/xueqiu/android/common/account/LoginActivity$37;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 328
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$37;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$37;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->h(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 332
    if-nez p2, :cond_0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 332
    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$37;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method
