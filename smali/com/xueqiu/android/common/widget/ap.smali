.class public final Lcom/xueqiu/android/common/widget/ap;
.super Landroid/app/Dialog;
.source "SingleDialog.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/aq;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ap;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ap;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    const v0, 0x7f0301cc

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ap;->setContentView(I)V

    .line 28
    const v0, 0x7f0e0655

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ap;->b:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ap;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/widget/ap$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/ap$1;-><init>(Lcom/xueqiu/android/common/widget/ap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/ap;->setCanceledOnTouchOutside(Z)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/ap;)Lcom/xueqiu/android/common/widget/aq;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ap;->a:Lcom/xueqiu/android/common/widget/aq;

    return-object v0
.end method
