.class public final Lcom/xueqiu/android/stock/a/ag;
.super Ljava/lang/Object;
.source "StockRankListAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/ag;
    .locals 2

    .prologue
    .line 310
    new-instance v1, Lcom/xueqiu/android/stock/a/ag;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/ag;-><init>()V

    .line 311
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->a:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f0e064e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->b:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0e03ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->c:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0e0400

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->d:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0e0683

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->e:Landroid/widget/ImageView;

    .line 316
    const v0, 0x7f0e0682

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/ag;->f:Landroid/view/View;

    .line 318
    return-object v1
.end method
