.class public final Lcom/xueqiu/android/stock/a/ab;
.super Landroid/support/v7/widget/ao;
.source "QuotesTopicRecyclerAdapter.java"


# instance fields
.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 82
    const v0, 0x7f0e05d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/ab;->k:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0e05cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/a/ab;->l:Landroid/widget/TextView;

    .line 84
    return-void
.end method
