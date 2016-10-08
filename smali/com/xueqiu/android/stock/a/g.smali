.class public final Lcom/xueqiu/android/stock/a/g;
.super Ljava/lang/Object;
.source "HgtAhStockRankListAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/g;
    .locals 2

    .prologue
    .line 90
    new-instance v1, Lcom/xueqiu/android/stock/a/g;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/g;-><init>()V

    .line 91
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/g;->a:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0e03ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/g;->b:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0e0400

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/g;->c:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0e0674

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/g;->d:Landroid/widget/TextView;

    .line 95
    return-object v1
.end method
