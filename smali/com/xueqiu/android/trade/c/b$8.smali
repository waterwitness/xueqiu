.class final Lcom/xueqiu/android/trade/c/b$8;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$8;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$8;->a:Lcom/xueqiu/android/trade/c/b;

    .line 1209
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/f;->e:Landroid/widget/TextView;

    .line 235
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b$8;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/b;->f(Lcom/xueqiu/android/trade/c/b;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-interface {p1, v3, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 240
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
