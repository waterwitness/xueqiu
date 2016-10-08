.class public final Lcom/xueqiu/android/stock/a/c;
.super Ljava/lang/Object;
.source "BuyBackRankListAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/xueqiu/android/stock/a/c;
    .locals 2

    .prologue
    .line 62
    new-instance v1, Lcom/xueqiu/android/stock/a/c;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/c;-><init>()V

    .line 63
    const v0, 0x7f0e01e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/c;->a:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e064e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/c;->b:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0e03ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/c;->c:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0e0400

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/c;->d:Landroid/widget/TextView;

    .line 67
    return-object v1
.end method
