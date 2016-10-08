.class final Lcom/xueqiu/android/stock/d;
.super Ljava/lang/Object;
.source "FundNvHistoryActivity.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcom/xueqiu/android/stock/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/stock/d;->e:Lcom/xueqiu/android/stock/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/d;->c:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e03ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/d;->d:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0e041d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/d;->b:Landroid/view/View;

    .line 136
    const v0, 0x7f0e0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/d;->a:Landroid/view/View;

    .line 137
    return-void
.end method
