.class final Lcom/xueqiu/android/common/widget/z$3;
.super Ljava/lang/Object;
.source "PrivateAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/z;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/z;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/z;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->b(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->c(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d00c2

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->c(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->c(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0088

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/z$3;->a:Lcom/xueqiu/android/common/widget/z;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/z;->c(Lcom/xueqiu/android/common/widget/z;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
