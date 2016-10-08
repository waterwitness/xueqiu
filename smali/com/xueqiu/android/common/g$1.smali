.class final Lcom/xueqiu/android/common/g$1;
.super Ljava/lang/Object;
.source "InputSettingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/g;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 55
    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->b(Lcom/xueqiu/android/common/g;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->b(Lcom/xueqiu/android/common/g;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->a(Lcom/xueqiu/android/common/g;)Lcom/xueqiu/android/common/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->c(Lcom/xueqiu/android/common/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->b(Lcom/xueqiu/android/common/g;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 63
    iget-object v0, p0, Lcom/xueqiu/android/common/g$1;->a:Lcom/xueqiu/android/common/g;

    invoke-static {v0}, Lcom/xueqiu/android/common/g;->b(Lcom/xueqiu/android/common/g;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0088

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
