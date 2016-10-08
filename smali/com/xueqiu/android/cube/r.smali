.class final Lcom/xueqiu/android/cube/r;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ProgressBar;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field final synthetic k:Lcom/xueqiu/android/cube/q;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/q;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 439
    iput-object p1, p0, Lcom/xueqiu/android/cube/r;->k:Lcom/xueqiu/android/cube/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const v0, 0x7f0e01e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->a:Landroid/widget/TextView;

    .line 441
    const v0, 0x7f0e040a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->b:Landroid/widget/TextView;

    .line 442
    const v0, 0x7f0e0409

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->c:Landroid/widget/TextView;

    .line 443
    const v0, 0x7f0e040b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->d:Landroid/widget/ProgressBar;

    .line 444
    const v0, 0x7f0e040e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->e:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f0e0410

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->f:Landroid/widget/TextView;

    .line 446
    const v0, 0x7f0e040f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->g:Landroid/widget/TextView;

    .line 447
    const v0, 0x7f0e040c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->h:Landroid/widget/ImageView;

    .line 448
    const v0, 0x7f0e0408

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->i:Landroid/widget/LinearLayout;

    .line 449
    const v0, 0x7f0e040d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/r;->j:Landroid/widget/LinearLayout;

    .line 450
    return-void
.end method
