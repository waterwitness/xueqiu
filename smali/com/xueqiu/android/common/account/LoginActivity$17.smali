.class final Lcom/xueqiu/android/common/account/LoginActivity$17;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 620
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$17;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 632
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$17;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->q(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 632
    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$17;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$17;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method
