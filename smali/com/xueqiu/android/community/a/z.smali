.class public final Lcom/xueqiu/android/community/a/z;
.super Landroid/support/v7/widget/ao;
.source "RecommendAdapter.java"


# instance fields
.field k:Landroid/widget/RelativeLayout;

.field l:Lcom/xueqiu/android/common/widget/RadarChart;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 326
    const v0, 0x7f0e02aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->k:Landroid/widget/RelativeLayout;

    .line 327
    const v0, 0x7f0e02c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/RadarChart;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->l:Lcom/xueqiu/android/common/widget/RadarChart;

    .line 328
    const v0, 0x7f0e02ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->m:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f0e02cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->n:Landroid/widget/TextView;

    .line 330
    const v0, 0x7f0e02cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->o:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0e02cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->p:Landroid/widget/ImageView;

    .line 332
    const v0, 0x7f0e02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->q:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0e02cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/z;->r:Landroid/widget/ImageView;

    .line 334
    return-void
.end method
