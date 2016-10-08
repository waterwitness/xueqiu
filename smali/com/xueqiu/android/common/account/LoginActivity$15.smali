.class final Lcom/xueqiu/android/common/account/LoginActivity$15;
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
    .line 560
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 573
    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    .line 585
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->d(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 578
    if-nez v1, :cond_1

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 579
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    goto :goto_0

    .line 3197
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 580
    if-nez v1, :cond_2

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 581
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$15;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 569
    return-void
.end method
