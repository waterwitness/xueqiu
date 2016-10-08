.class public final Lcom/xueqiu/android/stock/a/z;
.super Landroid/support/v7/widget/ao;
.source "QuotesRecyclerAdapter.java"


# instance fields
.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 78
    const v0, 0x7f0e05d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/z;->k:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0e05cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/z;->l:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e05d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/z;->m:Landroid/widget/TextView;

    .line 81
    return-void
.end method
