.class final Lcom/xueqiu/android/cube/a/v;
.super Ljava/lang/Object;
.source "TopListAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lcom/xueqiu/android/cube/a/u;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/a/u;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/v;->h:Lcom/xueqiu/android/cube/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const v0, 0x7f0e0412

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->a:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0e0415

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->b:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0e0414

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->c:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0e0413

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->d:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0e0416

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->e:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0e0417

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->f:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f0e0418

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/v;->g:Landroid/widget/TextView;

    .line 168
    return-void
.end method
