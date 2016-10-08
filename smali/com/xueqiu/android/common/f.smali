.class public final Lcom/xueqiu/android/common/f;
.super Lcom/xueqiu/android/common/c;
.source "HintFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xueqiu/android/common/f;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xueqiu/android/common/f;->b:Landroid/view/View;

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const v0, 0x7f030054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/f;->b:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/xueqiu/android/common/f;->b:Landroid/view/View;

    .line 1032
    const v1, 0x7f0e01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/f;->a:Landroid/widget/TextView;

    .line 1033
    iget-object v0, p0, Lcom/xueqiu/android/common/f;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/xueqiu/android/common/f;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01b0

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/common/f;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xueqiu/android/common/f;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 43
    :cond_0
    return-void
.end method
