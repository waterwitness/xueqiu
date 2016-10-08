.class final Lcom/xueqiu/android/common/account/LoginActivity$16;
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
    .line 593
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->e(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 605
    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->m(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->e(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->d(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;

    move-result-object v6

    .line 2100
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v4, v6, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    new-instance v5, Lcom/xueqiu/android/common/account/b$4;

    invoke-direct {v5, v6}, Lcom/xueqiu/android/common/account/b$4;-><init>(Lcom/xueqiu/android/common/account/b;)V

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 611
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->m(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 615
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$16;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/LoginActivity;->b(Lcom/xueqiu/android/common/account/LoginActivity;Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method
