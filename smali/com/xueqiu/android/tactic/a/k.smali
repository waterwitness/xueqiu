.class public final Lcom/xueqiu/android/tactic/a/k;
.super Landroid/support/v7/widget/ao;
.source "TacticSubscribeListAdapter.java"


# instance fields
.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;-><init>(Landroid/view/View;)V

    .line 85
    const v0, 0x7f0e069a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/k;->k:Landroid/view/View;

    .line 86
    const v0, 0x7f0e069b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/k;->l:Landroid/view/View;

    .line 87
    const v0, 0x7f0e05d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/k;->m:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0e05cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/k;->n:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0e069c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/a/k;->o:Landroid/widget/TextView;

    .line 90
    return-void
.end method
