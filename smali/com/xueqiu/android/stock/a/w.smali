.class final Lcom/xueqiu/android/stock/a/w;
.super Ljava/lang/Object;
.source "QuoteRankListAdapter.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Z)Lcom/xueqiu/android/stock/a/w;
    .locals 2

    .prologue
    .line 357
    new-instance v1, Lcom/xueqiu/android/stock/a/w;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/w;-><init>()V

    .line 358
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/w;->a:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f0e0671

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/w;->b:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f0e0672

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/w;->c:Landroid/widget/TextView;

    .line 361
    const v0, 0x7f0e0673

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/w;->d:Landroid/widget/TextView;

    .line 362
    if-eqz p1, :cond_0

    .line 363
    const v0, 0x7f0e0675

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/w;->e:Landroid/widget/TextView;

    .line 365
    :cond_0
    return-object v1
.end method
