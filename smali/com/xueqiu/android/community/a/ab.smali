.class public final Lcom/xueqiu/android/community/a/ab;
.super Landroid/support/v7/widget/ao;
.source "RecommendAdapter.java"


# instance fields
.field k:Landroid/widget/RelativeLayout;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 306
    const v0, 0x7f0e02d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ab;->k:Landroid/widget/RelativeLayout;

    .line 307
    const v0, 0x7f0e02d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ab;->l:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f0e02da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ab;->m:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f0e02db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ab;->n:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0e02dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/ab;->o:Landroid/widget/ImageView;

    .line 311
    return-void
.end method
