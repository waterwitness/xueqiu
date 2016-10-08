.class public final Lcom/xueqiu/android/tactic/a/i;
.super Landroid/support/v7/widget/ao;
.source "TacticStoreListAdapter.java"


# instance fields
.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 101
    const v0, 0x7f0e05d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/i;->k:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0e068c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/i;->l:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0e06a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/i;->m:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0e05cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/i;->n:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0e05d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/i;->o:Landroid/widget/TextView;

    .line 106
    return-void
.end method
